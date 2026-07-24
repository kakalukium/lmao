about:preferences#zenCKS


```
whisper "The disposable man_ all lives are not worth the same.mp3" --language English --model small --output_format txt --device cpu
```


```
yt-dlp -x --audio-format mp3 --embed-thumbnail --add-metadata --paths "E:\yt-dlp Test\nonLeatherLife https://www.youtube.com/@mynonleatherlife

```
#### More Questions

```
yt-dlp --download-archive "E:\yt-dlp\archives\my_archive.txt" --output "E:\yt-dlp\Videos\%(title)s.%(ext)s" 

```

 
000000\



import re

  

```
def extract_clean_first_sentence(text: str) -> str:

    """

    Extracts the first sentence ending in . or ? (whichever comes first),

    and removes special characters.

    """

    dot_index = text.find('.')

    q_index = text.find('?')

  

    # Handle cases where either or both are not found

    if dot_index == -1 and q_index == -1:

        sentence_end = len(text)

    elif dot_index == -1:

        sentence_end = q_index + 1

    elif q_index == -1:

        sentence_end = dot_index + 1

    else:

        sentence_end = min(dot_index, q_index) + 1

  

    sentence = text[:sentence_end]

    cleaned = re.sub(r'[*"\\/<>\:\|\?]', '', sentence)

    return cleaned

  

if __name__ == "__main__":

    with open("input.txt", "r", encoding="utf-8") as f:

        full_text = f.read()

  

    result = extract_clean_first_sentence(full_text)

    print(result)
   ```


```
cd "D:\notes\SQL ops\.obsidian\themes"
```


![[image-11.png|455x139]]



