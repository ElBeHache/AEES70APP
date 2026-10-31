.class Lcom/aee/sport/magicam/utils/SortFiles$2;
.super Ljava/lang/Object;
.source "SortFiles.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/utils/SortFiles;->sortFolderCreateTimeToFiles(Ljava/lang/String;)[Ljava/io/File;
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 4
    .param p1, "f1"    # Ljava/io/File;
    .param p2, "f2"    # Ljava/io/File;

    .prologue
    .line 167
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/aee/sport/magicam/utils/SortFiles$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
