.class public Lcom/aee/sport/magicam/softwareupdate/ParseXmlService;
.super Ljava/lang/Object;
.source "ParseXmlService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    .locals 11
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 23
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 26
    .local v6, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 28
    .local v5, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 30
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 32
    .local v4, "document":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    .line 34
    .local v8, "root":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 35
    .local v3, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lt v7, v9, :cond_0

    .line 69
    return-object v6

    .line 38
    :cond_0
    invoke-interface {v3, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 39
    .local v2, "childNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    move-object v1, v2

    .line 41
    check-cast v1, Lorg/w3c/dom/Element;

    .line 43
    .local v1, "childElement":Lorg/w3c/dom/Element;
    const-string v9, "version"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 45
    const-string v9, "version"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .end local v1    # "childElement":Lorg/w3c/dom/Element;
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 48
    .restart local v1    # "childElement":Lorg/w3c/dom/Element;
    :cond_2
    const-string v9, "name"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 50
    const-string v9, "name"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 53
    :cond_3
    const-string v9, "url"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 55
    const-string v9, "url"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 58
    :cond_4
    const-string v9, "info"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 60
    const-string v9, "info"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 63
    :cond_5
    const-string v9, "hostip"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 65
    const-string v9, "hostip"

    invoke-interface {v1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
