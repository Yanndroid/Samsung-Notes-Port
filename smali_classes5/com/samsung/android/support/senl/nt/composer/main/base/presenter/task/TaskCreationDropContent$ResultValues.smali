.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/Task$ResultValues;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultValues"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;->mDropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    return-void
.end method


# virtual methods
.method public getDropContent()Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;->mDropContent:Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;

    return-object v0
.end method

.method public showErrorToast()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/task/TaskCreationDropContent$ResultValues;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/samsung/android/support/senl/nt/composer/R$string;->composer_failed_to_copy:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;II)V

    return-void
.end method
