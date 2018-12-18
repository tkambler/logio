# tkambler/logio

```bash
docker run \
    --rm \
    -p "28777:28777" \
    -p "28778:28778" \
    -ti \
    --name logio \
    -v $(pwd)/conf:/root/.log.io \
    -v $(pwd)/something.log:/logio/something.log \
    tkambler/logio
```

## Related Resources

- [log.io](http://logio.org/)