.class Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FolderStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/tools/FoldedPopupUtil;->getFoldedActivityOptions(Landroid/content/Context;Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$foldDirection:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;->val$foldDirection:I

    iput-object p2, p0, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;->val$callback:Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;->val$callback:Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;->onCompleted(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;->val$foldDirection:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil;->a(Landroid/content/Context;)Landroid/app/ActivityOptions;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$1;->val$callback:Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;->onCompleted(Landroid/app/ActivityOptions;)V

    return-void
.end method
