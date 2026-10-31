.class public Lcom/aee/sport/magicam/utils/SortFiles;
.super Ljava/lang/Object;
.source "SortFiles.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalFiles(ZLjava/lang/String;)Ljava/util/List;
    .locals 19
    .param p0, "flag"    # Z
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .local v6, "fileAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    if-eqz p0, :cond_4

    .line 17
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .local v7, "fileP":Ljava/io/File;
    const/4 v12, 0x0

    new-array v2, v12, [Ljava/io/File;

    .line 19
    .local v2, "chrenFile":[Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 21
    array-length v12, v2

    if-gtz v12, :cond_1

    .line 52
    .end local v2    # "chrenFile":[Ljava/io/File;
    .end local v7    # "fileP":Ljava/io/File;
    :cond_0
    return-object v6

    .line 24
    .restart local v2    # "chrenFile":[Ljava/io/File;
    .restart local v7    # "fileP":Ljava/io/File;
    :cond_1
    array-length v14, v2

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v1, v2, v13

    .line 25
    .local v1, "chfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/aee/sport/magicam/utils/SortFiles;->sortFolderCreateTimeToFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    .line 27
    .local v8, "files":[Ljava/io/File;
    array-length v15, v8

    const/4 v12, 0x0

    :goto_1
    if-lt v12, v15, :cond_3

    .line 24
    .end local v8    # "files":[Ljava/io/File;
    :cond_2
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 27
    .restart local v8    # "files":[Ljava/io/File;
    :cond_3
    aget-object v4, v8, v12

    .line 29
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 30
    .local v10, "name":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "createTime":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    .line 32
    .local v9, "isFolder":Z
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 33
    .local v11, "uri":Ljava/lang/String;
    new-instance v5, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-direct {v5, v10, v3, v9, v11}, Lcom/aee/sport/magicam/bean/FileAttr;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 34
    .local v5, "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 40
    .end local v1    # "chfile":Ljava/io/File;
    .end local v2    # "chrenFile":[Ljava/io/File;
    .end local v3    # "createTime":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    .end local v7    # "fileP":Ljava/io/File;
    .end local v8    # "files":[Ljava/io/File;
    .end local v9    # "isFolder":Z
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "uri":Ljava/lang/String;
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/aee/sport/magicam/utils/SortFiles;->sortFolderCreateTimeToFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v8

    .line 41
    .restart local v8    # "files":[Ljava/io/File;
    array-length v13, v8

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_0

    aget-object v4, v8, v12

    .line 43
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 44
    .restart local v10    # "name":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .restart local v3    # "createTime":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    .line 46
    .restart local v9    # "isFolder":Z
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 47
    .restart local v11    # "uri":Ljava/lang/String;
    new-instance v5, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-direct {v5, v10, v3, v9, v11}, Lcom/aee/sport/magicam/bean/FileAttr;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 48
    .restart local v5    # "fileAttr":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v12, v12, 0x1

    goto :goto_2
.end method

.method public static sortCreateTime(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    new-instance v0, Lcom/aee/sport/magicam/utils/SortFiles$3;

    invoke-direct {v0}, Lcom/aee/sport/magicam/utils/SortFiles$3;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 192
    return-object p0
.end method

.method public static sortFolder(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v3, 0x0

    .line 65
    .local v3, "mFileSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v4, "mPathString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v4

    .line 70
    :cond_1
    const/4 v1, 0x0

    check-cast v1, [Ljava/io/File;

    .line 72
    .local v1, "fileList":[Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 77
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 80
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v3, v5

    .line 83
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 85
    if-lez v3, :cond_0

    .line 86
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v3, :cond_4

    .line 89
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 87
    :cond_4
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static sortFolderCreateTimeToFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 144
    const/4 v3, 0x0

    .line 145
    .local v3, "mFileSize":I
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/io/File;

    .line 147
    .local v1, "fileList":[Ljava/io/File;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 171
    .end local v1    # "fileList":[Ljava/io/File;
    .local v2, "fileList":[Ljava/io/File;
    :goto_0
    return-object v2

    .line 150
    .end local v2    # "fileList":[Ljava/io/File;
    .restart local v1    # "fileList":[Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 155
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_3

    :cond_2
    move-object v2, v1

    .line 156
    .end local v1    # "fileList":[Ljava/io/File;
    .restart local v2    # "fileList":[Ljava/io/File;
    goto :goto_0

    .line 158
    .end local v2    # "fileList":[Ljava/io/File;
    .restart local v1    # "fileList":[Ljava/io/File;
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v3, v4

    .line 161
    if-lez v3, :cond_4

    .line 162
    new-instance v4, Lcom/aee/sport/magicam/utils/SortFiles$2;

    invoke-direct {v4}, Lcom/aee/sport/magicam/utils/SortFiles$2;-><init>()V

    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_4
    move-object v2, v1

    .line 171
    .end local v1    # "fileList":[Ljava/io/File;
    .restart local v2    # "fileList":[Ljava/io/File;
    goto :goto_0
.end method

.method public static sortFolderToFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "mFileSize":I
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/io/File;

    .line 107
    .local v1, "fileList":[Ljava/io/File;
    if-nez p0, :cond_0

    move-object v2, v1

    .line 132
    .end local v1    # "fileList":[Ljava/io/File;
    .local v2, "fileList":[Ljava/io/File;
    :goto_0
    return-object v2

    .line 110
    .end local v2    # "fileList":[Ljava/io/File;
    .restart local v1    # "fileList":[Ljava/io/File;
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_3

    :cond_2
    move-object v2, v1

    .line 116
    .end local v1    # "fileList":[Ljava/io/File;
    .restart local v2    # "fileList":[Ljava/io/File;
    goto :goto_0

    .line 118
    .end local v2    # "fileList":[Ljava/io/File;
    .restart local v1    # "fileList":[Ljava/io/File;
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v3, v4

    .line 121
    if-lez v3, :cond_4

    .line 123
    new-instance v4, Lcom/aee/sport/magicam/utils/SortFiles$1;

    invoke-direct {v4}, Lcom/aee/sport/magicam/utils/SortFiles$1;-><init>()V

    invoke-static {v1, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_4
    move-object v2, v1

    .line 132
    .end local v1    # "fileList":[Ljava/io/File;
    .restart local v2    # "fileList":[Ljava/io/File;
    goto :goto_0
.end method
