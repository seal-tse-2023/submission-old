from scipy.stats import kruskal
import json
import matplotlib.pyplot as plt
from tslearn.clustering import TimeSeriesKMeans
from tslearn.utils import to_time_series_dataset

def dtw_clustering():
    """
    This method used to answer RQ2 and identify refactoring tactics
    """
    new_data = []
    with open("Data/weekly_refactoring_density.json") as json_file:
        densities = json.load(json_file)

    lenghts = []
    keys = []
    for repo, timeline in densities.items():
        for zone, series in timeline.items():
            if len(series) > 2:
                keys.append(str(repo) + "$" + str(zone))
                lenghts.append(len(series))
                new_data.append(series)
    data = to_time_series_dataset(new_data)

    km_dba = TimeSeriesKMeans(n_clusters=4, metric="dtw", random_state=29).fit(data)
    print(km_dba.cluster_centers_)
    print(km_dba.labels_)
    print(km_dba.predict(data))
    tmp = 0
    for i in km_dba.cluster_centers_:
        plt.ylim(0, 1)
        plt.plot(i)
        plt.title("Cluster Number: " + str(tmp), fontsize=16)
        plt.ylabel('Refactoring Ratio', fontsize=16)
        plt.xlabel('Life-Cycle (Weeks)', fontsize=16)
        plt.show()
        tmp = tmp + 1
    print(keys)
    print(len(keys))
    print(km_dba.labels_)
