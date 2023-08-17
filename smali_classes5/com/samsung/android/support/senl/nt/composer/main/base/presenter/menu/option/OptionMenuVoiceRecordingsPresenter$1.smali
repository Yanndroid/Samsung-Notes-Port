.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->addVoiceRecordings()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;

.field public final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "to get RECORD_AUDIO permission"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter$1;->val$permissions:[Ljava/lang/String;

    const/16 v2, 0x71

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method
