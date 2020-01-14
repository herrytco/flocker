import io
from flask import request, Response
from db.repository import Repository
from processing.clusterer import Clusterer
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas

repo = Repository()
clusterer = Clusterer()

def get():
    locations = repo.getLocations()
    labels = clusterer.create_labels(locations)
    
    return labels

def getImage():
    locations = repo.getLocations()

    labels = clusterer.create_labels(locations)
    fig = clusterer.draw_locations(locations, labels)

    output = io.BytesIO()
    FigureCanvas(fig).print_png(output)

    return Response(output.getvalue(), mimetype="image/png")