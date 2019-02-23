class DigsitePolygon {
  constructor() {
    this.map = document.querySelector('#polygon-map');
    this.points = JSON.parse(this.map.dataset.polygon);
  }

  draw() {
    const map = new google.maps.Map(document.querySelector('#polygon-map'), {
      zoom: 8,
      center: this.points[0],
    });
    map.data.add({ geometry: new google.maps.Data.Polygon([this.points]) });
    // debugger;
  }
}

function initMap() {
  if (!document.querySelector('#polygon-map')) { return; }
  const polygon = new DigsitePolygon();
  polygon.draw();
}

// document.addEventListener('DOMContentLoaded', initPolygon);
