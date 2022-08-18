import json
from kmodes.kmodes import KModes


def projects_kmods_cluster():
    """
    This method identifies Project profiles
    """
    with open("Data/project_mods.json") as json_file:
        details = json.load(json_file)

    redundants = ['code', 'comment']
    for project in details.keys():
        for redundant in redundants:
            details[project].pop(redundant, None)

    headers = list(list(details.values())[0].keys())
    data = []
    for repo, item in details.items():
        data.append(list(item.values()))

    km = KModes(n_clusters=4, init='Huang', random_state=0, n_init=5, verbose=1)
    km.fit_predict(data)
    print(km.cluster_centroids_)

    for centroid in km.cluster_centroids_:
        for i in range(0, len(centroid)):
            print(centroid[i] + " " + headers[i], end=" and ")
