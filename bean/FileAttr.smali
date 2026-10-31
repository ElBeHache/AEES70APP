.class public Lcom/aee/sport/magicam/bean/FileAttr;
.super Ljava/lang/Object;
.source "FileAttr.java"


# instance fields
.field private createTime:Ljava/lang/String;

.field private isFolder:Z

.field private isLocalFile:Z

.field private isSelected:Z

.field private name:Ljava/lang/String;

.field private selectedView:Landroid/view/View;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "createTime"    # Ljava/lang/String;
    .param p3, "isFolder"    # Z

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v2, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile:Z

    .line 53
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileAttr;->name:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/aee/sport/magicam/bean/FileAttr;->createTime:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/aee/sport/magicam/utils/Constants;->AMBA_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@@22@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/bean/FileAttr;->setUri(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p3}, Lcom/aee/sport/magicam/bean/FileAttr;->setFolder(Z)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/aee/sport/magicam/bean/FileAttr;->setLocalFile(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "createTime"    # Ljava/lang/String;
    .param p3, "isFolder"    # Z
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile:Z

    .line 65
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileAttr;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/aee/sport/magicam/bean/FileAttr;->createTime:Ljava/lang/String;

    .line 67
    iput-boolean p3, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isFolder:Z

    .line 68
    iput-object p4, p0, Lcom/aee/sport/magicam/bean/FileAttr;->uri:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/aee/sport/magicam/bean/FileAttr;->setLocalFile(Z)V

    .line 70
    return-void
.end method

.method public static getFileAttr(Ljava/lang/Object;)Ljava/util/List;
    .locals 13
    .param p0, "info"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    .line 101
    .local v6, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v10

    .line 102
    .local v10, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v10, :cond_0

    .line 116
    invoke-static {v2}, Lcom/aee/sport/magicam/utils/SortFiles;->sortCreateTime(Ljava/util/List;)Ljava/util/List;

    .line 120
    .end local v3    # "i":I
    .end local v6    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v10    # "size":I
    :goto_1
    return-object v2

    .line 103
    .restart local v3    # "i":I
    .restart local v6    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v10    # "size":I
    :cond_0
    invoke-virtual {v6, v3}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    .line 104
    .local v7, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 105
    .local v5, "it":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_1

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 106
    .local v8, "key":Ljava/lang/String;
    move-object v9, v8

    .line 107
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v7, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "createTime":Ljava/lang/String;
    const/4 v4, 0x0

    .line 109
    .local v4, "isFolder":Z
    const-string v12, "/"

    invoke-virtual {v9, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 110
    const/4 v4, 0x1

    .line 112
    :cond_2
    new-instance v12, Lcom/aee/sport/magicam/bean/FileAttr;

    invoke-direct {v12, v9, v0, v4}, Lcom/aee/sport/magicam/bean/FileAttr;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 117
    .end local v0    # "createTime":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "isFolder":Z
    .end local v5    # "it":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "size":I
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getPosition(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "newFiles":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    const/4 v2, 0x0

    .line 157
    .local v2, "position":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 158
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    move v1, v2

    .line 164
    .end local v1    # "i":I
    :cond_0
    return v1

    .line 160
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 161
    .local v0, "file":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getSpecifiedFileAttr(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "files":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v2, "myFiles":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    return-object v2

    .line 134
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 135
    .local v0, "file":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/aee/sport/magicam/utils/PublicUtils;->thisFileType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "fileType":Ljava/lang/String;
    if-nez p1, :cond_2

    const-string v5, "image/*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 139
    :cond_2
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    const-string v5, "video/*"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 142
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static removePositionFileAttr(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileAttr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "newFiles":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileAttr;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 175
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 184
    :goto_1
    return-void

    .line 177
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 178
    .local v0, "file":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v0}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 175
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->createTime:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->selectedView:Landroid/view/View;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public isFolder()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isFolder:Z

    return v0
.end method

.method public isLocalFile()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isSelected:Z

    return v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTime"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileAttr;->createTime:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setFolder(Z)V
    .locals 0
    .param p1, "isFolder"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isFolder:Z

    .line 193
    return-void
.end method

.method public setLocalFile(Z)V
    .locals 0
    .param p1, "isLocalFile"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isLocalFile:Z

    .line 238
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileAttr;->name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSelected(Z)V
    .locals 2
    .param p1, "isSelected"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isSelected:Z

    .line 209
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->selectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 211
    iget-boolean v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->isSelected:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->selectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/FileAttr;->selectedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 0
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileAttr;->selectedView:Landroid/view/View;

    .line 224
    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/FileAttr;->uri:Ljava/lang/String;

    .line 201
    return-void
.end method
