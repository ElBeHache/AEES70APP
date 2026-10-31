.class public Lcom/aee/sport/magicam/parseconfig/ConnectToHost;
.super Ljava/net/Socket;
.source "ConnectToHost.java"

# interfaces
.implements Lcom/aee/sport/magicam/parseconfig/ConnectInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    return-void
.end method

.method public static mConnectToHost(Ljava/net/InetAddress;II)Lcom/aee/sport/magicam/parseconfig/ConnectToHost;
    .locals 5
    .param p0, "paramInetAddress"    # Ljava/net/InetAddress;
    .param p1, "paramInt1"    # I
    .param p2, "paramInt2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 21
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p0, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 22
    .local v0, "localInetSocketAddress":Ljava/net/InetSocketAddress;
    const-string v2, "ConnectToHost"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addr:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v1, Lcom/aee/sport/magicam/parseconfig/ConnectToHost;

    invoke-direct {v1}, Lcom/aee/sport/magicam/parseconfig/ConnectToHost;-><init>()V

    .line 24
    .local v1, "locala":Lcom/aee/sport/magicam/parseconfig/ConnectToHost;
    invoke-virtual {v1, v0, p2}, Lcom/aee/sport/magicam/parseconfig/ConnectToHost;->connect(Ljava/net/SocketAddress;I)V

    .line 25
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public setSoTimeout(I)V
    .locals 0
    .param p1, "paramInt"    # I

    .prologue
    .line 52
    return-void
.end method
