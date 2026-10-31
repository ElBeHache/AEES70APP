.class Lcom/aee/sport/magicam/adapter/ImageAdapter$3;
.super Ljava/lang/Object;
.source "ImageAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aee/sport/magicam/adapter/ImageAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;


# direct methods
.method constructor <init>(Lcom/aee/sport/magicam/adapter/ImageAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aee/sport/magicam/adapter/ImageAdapter$3;->this$0:Lcom/aee/sport/magicam/adapter/ImageAdapter;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method
