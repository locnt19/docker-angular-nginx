# Scripts

### 1. Build image (default production mode)

```
docker build -t <image-name>:tag .
```

Build image with development mode

```
docker build -t <image-name>:dev --build-arg configuaration="" .
```

Build image with Staging mode

```
docker build -t <image-name>:stag --build-arg configuaration="staging" .
```

### 2. Run image

```
docker run -d -p 80:80 <image-name>:<tag>
```

# Dockerfile

<table>
  <thead>
    <tr>
      <th>Property</th>
      <th>Description</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>/angular_app/</strong></td>
      <td>You can rename anything</td>
    </tr>
  </tbody>
</table>
