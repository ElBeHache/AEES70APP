.class public Lcom/aee/sport/magicam/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileChannelCopy(Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    .param p0, "s"    # Ljava/io/File;
    .param p1, "t"    # Ljava/io/File;

    .prologue
    .line 41
    const/4 v11, 0x0

    .line 42
    .local v11, "isSuccess":Z
    const/4 v7, 0x0

    .line 44
    .local v7, "fi":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 46
    .local v9, "fo":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 48
    .local v0, "in":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 52
    .local v5, "out":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .local v8, "fi":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .local v10, "fo":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 58
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 60
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 62
    const/4 v11, 0x1

    .line 72
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    .line 74
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 76
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 78
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 88
    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    :goto_0
    return v11

    .line 64
    :catch_0
    move-exception v6

    .line 66
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 74
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 76
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 78
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 80
    :catch_1
    move-exception v6

    .line 82
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 72
    :goto_2
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 74
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 76
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 78
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 86
    :goto_3
    throw v1

    .line 80
    :catch_2
    move-exception v6

    .line 82
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 80
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    .line 82
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_0

    .line 68
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v1

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_2

    .line 64
    .end local v7    # "fi":Ljava/io/FileInputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    :catch_4
    move-exception v6

    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v7    # "fi":Ljava/io/FileInputStream;
    .end local v9    # "fo":Ljava/io/FileOutputStream;
    .restart local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v10    # "fo":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v6

    move-object v9, v10

    .end local v10    # "fo":Ljava/io/FileOutputStream;
    .restart local v9    # "fo":Ljava/io/FileOutputStream;
    move-object v7, v8

    .end local v8    # "fi":Ljava/io/FileInputStream;
    .restart local v7    # "fi":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x400

    .line 201
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 220
    :goto_0
    return-object v7

    .line 204
    :cond_0
    const/4 v2, 0x0

    .line 205
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 206
    .local v4, "in":Ljava/io/FileInputStream;
    new-array v1, v9, [B

    .line 209
    .local v1, "buffer":[B
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 210
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 211
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_1

    .line 214
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 219
    new-instance v0, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 220
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 212
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    :cond_1
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v2, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 215
    .end local v6    # "len":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 216
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static getLastThirdBitmap(Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .locals 15
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v14, 0x190

    const/4 v13, 0x1

    const/4 v12, 0x0

    const v11, 0x7f020085

    const/4 v10, 0x2

    .line 157
    const/4 v1, 0x0

    check-cast v1, [Landroid/graphics/Bitmap;

    .line 158
    .local v1, "bitmaps":[Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/aee/sport/magicam/utils/FileUtils;->getLastThirdFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v4

    .line 159
    .local v4, "files":[Ljava/io/File;
    const/4 v7, 0x0

    .line 160
    .local v7, "size":I
    if-eqz v4, :cond_0

    .line 161
    array-length v7, v4

    .line 163
    :cond_0
    const/4 v9, 0x3

    new-array v1, v9, [Landroid/graphics/Bitmap;

    .line 164
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v1, v12

    .line 165
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v1, v13

    .line 166
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v1, v10

    .line 167
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-lt v5, v7, :cond_1

    .line 186
    :goto_1
    aget-object v0, v1, v10

    .line 187
    .local v0, "bitmapTemp":Landroid/graphics/Bitmap;
    aget-object v9, v1, v12

    aput-object v9, v1, v10

    .line 188
    aput-object v0, v1, v12

    .line 190
    return-object v1

    .line 168
    .end local v0    # "bitmapTemp":Landroid/graphics/Bitmap;
    :cond_1
    aget-object v2, v4, v5

    .line 169
    .local v2, "file":Ljava/io/File;
    if-nez v2, :cond_3

    .line 167
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 172
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 173
    .local v3, "filePath":Ljava/lang/String;
    invoke-static {v6}, Lcom/aee/sport/magicam/utils/PublicUtils;->thisFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 174
    .local v8, "type":Ljava/lang/String;
    const-string v9, "video/*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 175
    invoke-static {v3, v13}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v1, v5

    .line 182
    :goto_2
    if-lt v5, v10, :cond_2

    goto :goto_1

    .line 176
    :cond_4
    const-string v9, "image/*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 177
    invoke-static {v3, v14, v14}, Lcom/aee/sport/magicam/utils/BitmapUtils;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v1, v5

    goto :goto_2

    .line 179
    :cond_5
    invoke-static {}, Lcom/aee/sport/magicam/AeeApplication;->getAppResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v1, v5

    goto :goto_2
.end method

.method public static getLastThirdFiles(Ljava/lang/String;)[Ljava/io/File;
    .locals 15
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v11, 0x0

    new-array v8, v11, [Ljava/io/File;

    .line 101
    .local v8, "lastFiles":[Ljava/io/File;
    const/4 v11, 0x0

    new-array v5, v11, [Ljava/io/File;

    .line 102
    .local v5, "files":[Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v3, "fileAttrs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v4, "fileP":Ljava/io/File;
    const/4 v11, 0x0

    new-array v1, v11, [Ljava/io/File;

    .line 106
    .local v1, "chrenFile":[Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 107
    if-nez v1, :cond_0

    move-object v9, v8

    .line 145
    .end local v8    # "lastFiles":[Ljava/io/File;
    .local v9, "lastFiles":[Ljava/io/File;
    :goto_0
    return-object v9

    .line 110
    .end local v9    # "lastFiles":[Ljava/io/File;
    .restart local v8    # "lastFiles":[Ljava/io/File;
    :cond_0
    array-length v11, v1

    if-gtz v11, :cond_1

    move-object v9, v8

    .line 111
    .end local v8    # "lastFiles":[Ljava/io/File;
    .restart local v9    # "lastFiles":[Ljava/io/File;
    goto :goto_0

    .line 113
    .end local v9    # "lastFiles":[Ljava/io/File;
    .restart local v8    # "lastFiles":[Ljava/io/File;
    :cond_1
    array-length v13, v1

    const/4 v11, 0x0

    move v12, v11

    :goto_1
    if-lt v12, v13, :cond_2

    .line 124
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    new-array v5, v11, [Ljava/io/File;

    .line 125
    const/4 v6, 0x0

    .line 126
    .local v6, "i":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 131
    array-length v10, v5

    .line 132
    .local v10, "length":I
    if-nez v10, :cond_6

    move-object v9, v8

    .line 133
    .end local v8    # "lastFiles":[Ljava/io/File;
    .restart local v9    # "lastFiles":[Ljava/io/File;
    goto :goto_0

    .line 113
    .end local v6    # "i":I
    .end local v9    # "lastFiles":[Ljava/io/File;
    .end local v10    # "length":I
    .restart local v8    # "lastFiles":[Ljava/io/File;
    :cond_2
    aget-object v0, v1, v12

    .line 114
    .local v0, "chfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/aee/sport/magicam/utils/SortFiles;->sortFolderCreateTimeToFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    .line 116
    array-length v14, v5

    const/4 v11, 0x0

    :goto_3
    if-lt v11, v14, :cond_4

    .line 113
    :cond_3
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_1

    .line 116
    :cond_4
    aget-object v2, v5, v11

    .line 118
    .local v2, "file":Ljava/io/File;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 126
    .end local v0    # "chfile":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .restart local v6    # "i":I
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 128
    .restart local v2    # "file":Ljava/io/File;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "i":I
    .local v7, "i":I
    aput-object v2, v5, v6

    move v6, v7

    .end local v7    # "i":I
    .restart local v6    # "i":I
    goto :goto_2

    .line 134
    .end local v2    # "file":Ljava/io/File;
    .restart local v10    # "length":I
    :cond_6
    const/4 v11, 0x3

    if-lt v10, v11, :cond_8

    .line 135
    const/4 v11, 0x3

    new-array v8, v11, [Ljava/io/File;

    .line 136
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v5, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_4
    move-object v9, v8

    .line 145
    .end local v8    # "lastFiles":[Ljava/io/File;
    .restart local v9    # "lastFiles":[Ljava/io/File;
    goto :goto_0

    .line 137
    .end local v9    # "lastFiles":[Ljava/io/File;
    .restart local v8    # "lastFiles":[Ljava/io/File;
    :cond_8
    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 138
    const/4 v11, 0x2

    new-array v8, v11, [Ljava/io/File;

    .line 139
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-static {v5, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    .line 140
    :cond_9
    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 141
    const/4 v11, 0x2

    new-array v8, v11, [Ljava/io/File;

    .line 142
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v5, v11, v8, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method
