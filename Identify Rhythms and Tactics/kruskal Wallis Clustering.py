from scipy.stats import kruskal
import json
import matplotlib.pyplot as plt
from tslearn.clustering import TimeSeriesKMeans
from tslearn.utils import to_time_series_dataset


def kruskal_wallis_clustering():
    """
    This method used to answer RQ1 and identify refactoring rhythms
    """
    results = {
        'all-day': [],
        'work-day': [],
        'other': []
    }
    with open("Data/daily_refactoring_density.json") as project:
        history = json.load(project)

    # Identify projects with all-day refactoring rhythm
    for repo, daily_ratios in history.items():
        daily_ratio_list = list(daily_ratios.values())
        print('working on ', repo)
        try:
            stat, p = kruskal(*daily_ratio_list)
        except ValueError as e:
            continue

        alpha = 0.05
        if p > alpha:
            results['all-day'].append(repo)
            print('Statistics=%.3f, p=%.3f' % (stat, p))
            print('Same distributions (fail to reject H0)')

    # Identify projects with work-day only refactoring rhythm
    for repo, daily_ratios in history.items():
        if repo not in results['all-day']:
            daily_ratios.pop('Saturday', None)
            daily_ratios.pop('Sunday', None)
            daily_ratio_list = list(daily_ratios.values())
            print('working on ', repo)
            try:
                stat, p = kruskal(*daily_ratio_list)
            except ValueError as e:
                continue
            alpha = 0.05
            if p > alpha:
                results['work-day'].append(repo)
                print('Statistics=%.3f, p=%.3f' % (stat, p))
                print('Same distributions (fail to reject H0)')
            else:
                results['other'].append(repo)

    out_file = open("groups.json", "w")
    json.dump(results, out_file, indent=4)
    out_file.close()
