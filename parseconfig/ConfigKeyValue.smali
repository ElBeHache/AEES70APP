.class public Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;
.super Ljava/lang/Object;
.source "ConfigKeyValue.java"


# instance fields
.field public a:Ljava/lang/String;

.field public d:I

.field public e:Z

.field public h:I

.field public name:Ljava/lang/String;

.field public option:[Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public stateVal:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aee/sport/magicam/parseconfig/ParseConfig;)V
    .locals 3
    .param p1, "paramf"    # Lcom/aee/sport/magicam/parseconfig/ParseConfig;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->a:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    .line 8
    iput v2, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->d:I

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->e:Z

    .line 10
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->option:[Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->permission:Ljava/lang/String;

    .line 12
    iput v2, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->h:I

    .line 16
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "name = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; stateVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/parseconfig/ConfigKeyValue;->stateVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
