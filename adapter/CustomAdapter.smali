.class public Lcom/aee/sport/magicam/adapter/CustomAdapter;
.super Landroid/widget/BaseAdapter;
.source "CustomAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private flag:Z

.field private hashlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileContent;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private isDo:Z

.field private final selected:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileContent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/aee/sport/magicam/bean/FileContent;>;"
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->selected:Ljava/util/LinkedList;

    .line 63
    iput-boolean v1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->flag:Z

    .line 67
    iput-boolean v1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->isDo:Z

    .line 70
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->context:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 72
    iput-object p2, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->hashlist:Ljava/util/List;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->selected:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->hashlist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/aee/sport/magicam/adapter/CustomAdapter;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->hashlist:Ljava/util/List;

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->hashlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getHashlist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/aee/sport/magicam/bean/FileContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->hashlist:Ljava/util/List;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 258
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->hashlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 263
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelect()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->selected:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 81
    const/4 v7, 0x0

    .line 83
    .local v7, "holder":Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    if-nez p2, :cond_4

    .line 84
    :try_start_0
    iget-object v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->inflater:Landroid/view/LayoutInflater;

    const v12, 0x7f030030

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 86
    new-instance v8, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;

    invoke-direct {v8, p0}, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;-><init>(Lcom/aee/sport/magicam/adapter/CustomAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v7    # "holder":Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    .local v8, "holder":Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    const v11, 0x7f0c0093

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    iput-object v11, v8, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    .line 88
    const v11, 0x7f0c0095

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    .line 89
    const v11, 0x7f0c0096

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->tvsize:Landroid/widget/TextView;

    .line 90
    const v11, 0x7f0c0094

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v8, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    .line 91
    const v11, 0x7f0c0097

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v8, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btdis:Landroid/widget/ImageView;

    .line 92
    const v11, 0x7f0c0098

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v8, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    .line 93
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 97
    .end local v8    # "holder":Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    .restart local v7    # "holder":Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    :goto_0
    const/4 v11, 0x0

    :try_start_2
    iput-boolean v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->flag:Z

    .line 98
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->isDo:Z

    .line 99
    iget-object v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->hashlist:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/aee/sport/magicam/bean/FileContent;

    .line 100
    .local v5, "fc":Lcom/aee/sport/magicam/bean/FileContent;
    sget-object v11, Lcom/aee/sport/magicam/AeeApplication;->checkViews:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 101
    sget-object v11, Lcom/aee/sport/magicam/AeeApplication;->checkViews:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->tvsize:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getSize()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->tvContent:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "JPG"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 107
    :cond_1
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btdis:Landroid/widget/ImageView;

    const v12, 0x7f02009d

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :goto_1
    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v12

    const-string v13, "MEDIA"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getUrl()Ljava/lang/String;

    move-result-object v13

    const-string v14, "MEDIA"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "content":Ljava/lang/String;
    sget-object v11, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localRemoteFiles:Ljava/util/List;

    if-eqz v11, :cond_3

    .line 114
    sget-object v11, Lcom/aee/sport/magicam/playback/PlayBackActivity;->localRemoteFiles:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 135
    :cond_3
    :goto_2
    iget-boolean v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->flag:Z

    if-nez v11, :cond_a

    iget-boolean v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->isDo:Z

    if-nez v11, :cond_a

    .line 136
    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getDown()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f080016

    invoke-static {v12}, Lcom/aee/sport/magicam/AeeApplication;->getStr(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 137
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 138
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const v12, 0x7f02005d

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_3
    iget-object v12, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    iget-object v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->selected:Ljava/util/LinkedList;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v12, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 165
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->cbSelect:Landroid/widget/CheckBox;

    new-instance v12, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;

    move/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter$1;-><init>(Lcom/aee/sport/magicam/adapter/CustomAdapter;I)V

    invoke-virtual {v11, v12}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    new-instance v12, Lcom/aee/sport/magicam/adapter/CustomAdapter$2;

    move/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter$2;-><init>(Lcom/aee/sport/magicam/adapter/CustomAdapter;I)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btdis:Landroid/widget/ImageView;

    new-instance v12, Lcom/aee/sport/magicam/adapter/CustomAdapter$3;

    move/from16 v0, p1

    invoke-direct {v12, p0, v0}, Lcom/aee/sport/magicam/adapter/CustomAdapter$3;-><init>(Lcom/aee/sport/magicam/adapter/CustomAdapter;I)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v2, p2

    .line 246
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    .end local p2    # "convertView":Landroid/view/View;
    .local v2, "convertView":Landroid/view/View;
    :goto_4
    return-object v2

    .line 95
    .end local v2    # "convertView":Landroid/view/View;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;

    move-object v7, v0

    goto/16 :goto_0

    .line 109
    .restart local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    :cond_5
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btdis:Landroid/widget/ImageView;

    const v12, 0x7f02009e

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 243
    .end local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    move-object/from16 v2, p2

    .line 244
    .end local p2    # "convertView":Landroid/view/View;
    .restart local v2    # "convertView":Landroid/view/View;
    goto :goto_4

    .line 114
    .end local v2    # "convertView":Landroid/view/View;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aee/sport/magicam/bean/FileAttr;

    .line 115
    .local v4, "fa":Lcom/aee/sport/magicam/bean/FileAttr;
    invoke-virtual {v4}, Lcom/aee/sport/magicam/bean/FileAttr;->getName()Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "filename":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lcom/aee/sport/magicam/bean/FileAttr;->getUri()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, -0x2

    aget-object v10, v12, v13

    .line 117
    .local v10, "strr":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 118
    sget-object v11, Lcom/aee/sport/magicam/playback/PlayBackActivity;->isDowns:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_8

    .line 125
    :goto_6
    iget-boolean v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->isDo:Z

    if-nez v11, :cond_3

    .line 126
    const v11, 0x7f080019

    invoke-static {v11}, Lcom/aee/sport/magicam/AeeApplication;->getStr(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/aee/sport/magicam/bean/FileContent;->setDown(Ljava/lang/String;)V

    .line 127
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->flag:Z

    goto/16 :goto_2

    .line 118
    :cond_8
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 119
    .local v9, "str":Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 120
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->isDo:Z

    goto :goto_6

    .line 141
    .end local v4    # "fa":Lcom/aee/sport/magicam/bean/FileAttr;
    .end local v6    # "filename":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    .end local v10    # "strr":Ljava/lang/String;
    :cond_9
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 142
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const v12, 0x7f02005a

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getDown()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 147
    :cond_a
    iget-boolean v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->flag:Z

    if-nez v11, :cond_c

    iget-boolean v11, p0, Lcom/aee/sport/magicam/adapter/CustomAdapter;->isDo:Z

    if-eqz v11, :cond_c

    .line 148
    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getDown()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f080019

    invoke-static {v12}, Lcom/aee/sport/magicam/AeeApplication;->getStr(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 149
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 150
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const v12, 0x7f020059

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 153
    :cond_b
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 154
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const v12, 0x7f02005a

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/aee/sport/magicam/bean/FileContent;->getDown()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 159
    :cond_c
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 160
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->btClick:Landroid/widget/ImageView;

    const v12, 0x7f020059

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    const v12, 0x7f080016

    invoke-static {v12}, Lcom/aee/sport/magicam/AeeApplication;->getStr(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v11, v7, Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;->progress:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 243
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "fc":Lcom/aee/sport/magicam/bean/FileContent;
    .end local v7    # "holder":Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    .restart local v8    # "holder":Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    :catch_1
    move-exception v3

    move-object v7, v8

    .end local v8    # "holder":Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    .restart local v7    # "holder":Lcom/aee/sport/magicam/adapter/CustomAdapter$ViewHolder;
    goto/16 :goto_5
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/os/Message;

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method
