.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$InputValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputValues"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputContentInfo:Landroidx/core/view/inputmethod/InputContentInfoCompat;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;Landroidx/core/view/inputmethod/InputContentInfoCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;->mInputContentInfo:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;)Landroidx/core/view/inputmethod/InputContentInfoCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;->mInputContentInfo:Landroidx/core/view/inputmethod/InputContentInfoCompat;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;)Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCommitContent$InputValues;->mPageManager:Lcom/samsung/android/support/senl/nt/composer/main/base/page/PageManager;

    return-object p0
.end method
