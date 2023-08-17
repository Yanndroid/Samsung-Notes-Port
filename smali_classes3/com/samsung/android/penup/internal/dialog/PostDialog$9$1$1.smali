.class Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/ArtworkResource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;

.field public final synthetic val$artwork:Lcom/samsung/android/penup/model/ArtworkResource;

.field public final synthetic val$result:Lcom/samsung/android/penup/ResponseResult;


# direct methods
.method public constructor <init>(Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/ArtworkResource;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1$1;->this$2:Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;

    iput-object p2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1$1;->val$result:Lcom/samsung/android/penup/ResponseResult;

    iput-object p3, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1$1;->val$artwork:Lcom/samsung/android/penup/model/ArtworkResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1$1;->this$2:Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1;->this$1:Lcom/samsung/android/penup/internal/dialog/PostDialog$9;

    iget-object v0, v0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9;->this$0:Lcom/samsung/android/penup/internal/dialog/PostDialog;

    invoke-static {v0}, Lcom/samsung/android/penup/internal/dialog/PostDialog;->access$400(Lcom/samsung/android/penup/internal/dialog/PostDialog;)Lcom/samsung/android/penup/ResourceCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1$1;->val$result:Lcom/samsung/android/penup/ResponseResult;

    iget-object v2, p0, Lcom/samsung/android/penup/internal/dialog/PostDialog$9$1$1;->val$artwork:Lcom/samsung/android/penup/model/ArtworkResource;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/penup/ResourceCallback;->onCompleted(Lcom/samsung/android/penup/ResponseResult;Lcom/samsung/android/penup/model/Resource;)V

    return-void
.end method
