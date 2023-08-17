.class Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;
.super Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder<",
        "Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/ObjectBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;-><init>(Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper$IPresenter;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/FolderPresenter$2;->build()Lcom/samsung/android/support/senl/nt/app/main/folder/presenter/LockHelper;

    move-result-object v0

    return-object v0
.end method
