.class Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->initViewPager(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sendPageSALogging(I)V
    .locals 2

    const-string v0, "510"

    if-nez p1, :cond_0

    const-string p1, "5811"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "5011"

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const-string p1, "5022"

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPageSALogging# unexpected page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsStyleOfNewNotesPrefFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->b(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;I)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->a(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->d(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$2;->this$0:Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;->c(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsStyleOfNewNotesPrefFragment$2;->sendPageSALogging(I)V

    return-void
.end method
