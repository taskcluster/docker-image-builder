



Basic idea:

You specify a task with the image `docker-image-builder`.
```js
task: {
  payload: {
    image: 'docker-image-builder',
    env: {
      IMAGE_CONTEXT_URL: 'https://...'
    }
    artifacts: {
      'public/docker-images.tar': {
        path: '/home/output-image.tar',
        type: 'file',
        expires: '...'
      }
    }
  }
}
```

