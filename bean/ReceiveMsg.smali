.class public Lcom/aee/sport/magicam/bean/ReceiveMsg;
.super Ljava/lang/Object;
.source "ReceiveMsg.java"


# instance fields
.field private listing:Ljava/lang/Object;

.field private md5sum:Ljava/lang/String;

.field private options:Ljava/lang/String;

.field private param:Ljava/lang/String;

.field private param_size:I

.field private permission:Ljava/lang/String;

.field private rval:I

.field private session_id:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListing()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->listing:Ljava/lang/Object;

    return-object v0
.end method

.method public getMd5sum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->md5sum:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->options:Ljava/lang/String;

    return-object v0
.end method

.method public getParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->param:Ljava/lang/String;

    return-object v0
.end method

.method public getParam_size()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->param_size:I

    return v0
.end method

.method public getPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public getRval()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->rval:I

    return v0
.end method

.method public getSession_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->session_id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setListing(Ljava/lang/Object;)V
    .locals 0
    .param p1, "listing"    # Ljava/lang/Object;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->listing:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public setMd5sum(Ljava/lang/String;)V
    .locals 0
    .param p1, "md5sum"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->md5sum:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 0
    .param p1, "options"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->options:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setParam(Ljava/lang/String;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->param:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setParam_size(I)V
    .locals 0
    .param p1, "param_size"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->param_size:I

    .line 48
    return-void
.end method

.method public setPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->permission:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setRval(I)V
    .locals 0
    .param p1, "rval"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->rval:I

    .line 56
    return-void
.end method

.method public setSession_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "session_id"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->session_id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->type:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReceiveMsg [rval="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->rval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->param:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->param_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->listing:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->options:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/aee/sport/magicam/bean/ReceiveMsg;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
