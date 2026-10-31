.class public Lcom/aee/sport/magicam/bean/FileContent;
.super Ljava/lang/Object;
.source "FileContent.java"


# instance fields
.field private down:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDown()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileContent;->down:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileContent;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setDown(Ljava/lang/String;)V
    .locals 0
    .param p1, "down"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileContent;->down:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileContent;->name:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileContent;->size:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileContent;->url:Ljava/lang/String;

    .line 15
    return-void
.end method
