.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;->executeSaveDirectoryPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuSharePresenter;->startSaveDirectoryPicker()V

    return-void
.end method
