.class Lcom/aee/sport/magicam/utils/SortFiles$3;
.super Ljava/lang/Object;
.source "SortFiles.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/SortFiles;->sortCreateTime(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/aee/sport/magicam/bean/FileAttr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/aee/sport/magicam/bean/FileAttr;Lcom/aee/sport/magicam/bean/FileAttr;)I
    .locals 2
    .param p1, "arg0"    # Lcom/aee/sport/magicam/bean/FileAttr;
    .param p2, "arg1"    # Lcom/aee/sport/magicam/bean/FileAttr;

    .prologue
    .line 188
    invoke-virtual {p2}, Lcom/aee/sport/magicam/bean/FileAttr;->getCreateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aee/sport/magicam/bean/FileAttr;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/aee/sport/magicam/bean/FileAttr;

    check-cast p2, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-virtual {p0, p1, p2}, Lcom/aee/sport/magicam/utils/SortFiles$3;->compare(Lcom/aee/sport/magicam/bean/FileAttr;Lcom/aee/sport/magicam/bean/FileAttr;)I

    move-result v0

    return v0
.end method
