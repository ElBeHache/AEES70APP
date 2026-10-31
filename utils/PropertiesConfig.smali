.class public Lcom/aee/sport/magicam/utils/PropertiesConfig;
.super Ljava/lang/Object;
.source "PropertiesConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Properties;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 138
    .local v1, "properties":Ljava/util/Properties;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, "s":Ljava/io/FileInputStream;
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 140
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v1    # "properties":Ljava/util/Properties;
    .end local v2    # "s":Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 141
    .restart local v1    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static readData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 35
    .local v2, "props":Ljava/util/Properties;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 36
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 38
    invoke-virtual {v2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 42
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static saveConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/Properties;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "fil":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 154
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 155
    .local v2, "s":Ljava/io/FileOutputStream;
    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    const/4 v3, 0x1

    .end local v1    # "fil":Ljava/io/File;
    .end local v2    # "s":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setProfileString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 86
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "f":Ljava/io/File;
    const/4 v8, 0x0

    .line 88
    .local v8, "res":Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 89
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 90
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v7, ""

    .line 91
    .local v7, "outstr":Ljava/lang/String;
    const-string v6, ""

    .line 93
    .local v6, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 115
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 116
    if-eqz v8, :cond_0

    .line 118
    new-instance v4, Ljava/io/FileWriter;

    const/4 v10, 0x0

    invoke-direct {v4, p0, v10}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 119
    .local v4, "fw":Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 120
    .local v1, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 123
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V

    .line 124
    const/4 v9, 0x1

    .line 130
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "fw":Ljava/io/FileWriter;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "outstr":Ljava/lang/String;
    .end local v8    # "res":Z
    :cond_0
    :goto_1
    return v9

    .line 94
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "outstr":Ljava/lang/String;
    .restart local v8    # "res":Z
    :cond_1
    const-string v10, ""

    if-ne v6, v10, :cond_2

    .line 96
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    const-string v10, "#"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 102
    goto :goto_0

    .line 104
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 105
    const-string v10, "="

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "keyandvalue":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, v5, v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 109
    const/4 v8, 0x1

    .line 110
    goto/16 :goto_0

    .line 112
    .end local v5    # "keyandvalue":[Ljava/lang/String;
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto/16 :goto_0

    .line 127
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "outstr":Ljava/lang/String;
    .end local v8    # "res":Z
    :catch_0
    move-exception v2

    .line 128
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 58
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 60
    .local v4, "prop":Ljava/util/Properties;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 62
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 63
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 64
    .local v2, "fis":Ljava/io/InputStream;
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 66
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 67
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, "fos":Ljava/io/OutputStream;
    invoke-virtual {v4, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Update \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/InputStream;
    .end local v3    # "fos":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
