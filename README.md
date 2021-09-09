# get-status

## Abstract

Print URL and its http status code by each line in text file.

## Example

```sh
$ cat list.txt
wiki/HTTPS
wiki/List_of_HTTP_status_codes
not-found
wiki/Hypertext_Transfer_Protocol
$ ./get-status.sh https://en.wikipedia.org/ list.txt
https://en.wikipedia.org/wiki/HTTPS	200
https://en.wikipedia.org/wiki/List_of_HTTP_status_codes	200
https://en.wikipedia.org/not-found	404
https://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol	200
```

## License

MIT

