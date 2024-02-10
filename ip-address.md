# WHAT'S AN IP ADDRESS?

Imagine a world where I've found a great website where you can learn exciting things. You ask me which, and I tell you: **206.129.182.176**.
You would think I was talking crazy!

Here's the twist: this is the internet right now.

![image](https://github.com/gerep/ip-address/assets/181501/92936ceb-18fa-4ca5-b5e9-bb253efebb9c)

## Don't worry; I will guide you through the network world!

That number is an **IP address** - like a name tag of devices on the internet. That's a unique identifier in the vast digital landscape.

_How can these devices find unique IP addresses?_

When you turn your router on, it pings your Internet Service Provider (ISP) and asks, "Can I join the party?" Once verified, the ISP gives you an IP address, and your router broadcasts a message, like sharing the good news that now you are on the network, saying, "Hello world, this is my IP address." Those devices will respond with their details, and your router will build a network map.

_But we still need to memorise IP addresses!_

I'm going to present the unsung networking hero. The name is short, but the relevance is enormous! Domain Name System, DNS for close friends like us.

DNS is the guy who whispers the IP address in your router's ears — translating hard-to-remember IP addresses into easy-to-remember names.

# ASSIGNMENT

There is a way for us to find what IP address is being used by a website. Open your terminal and type `ping` followed by the website name.

```bash
ping boot.dev
```

Depending on your OS, this command may ping the page a few times and exit or keep pinging the page, and if so, you have to cancel the command with `ctrl+c`.

Could you take a look at the output? You'll see the IP address to which the boot.dev name is pointing to, and some extra information organised in a key/value fashion:

```
key=value key2=value2 ...
```

Type the keys you see in your ping output on the input field on the right.
