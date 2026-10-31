.class Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;
.super Ljava/lang/Object;
.source "RemoteFileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageItemHolder"
.end annotation


# instance fields
.field checked:Landroid/widget/ImageView;

.field icon:Landroid/widget/ImageView;

.field isVideo:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/RemoteFileAdapter$ImageItemHolder;->this$0:Lcom/aee/sport/magicam/adapter/RemoteFileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
