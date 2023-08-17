.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;->showOptionMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/samsung/android/support/senl/nt/composer/R$id;->action_recording_replay:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->changeSyncOption(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "506"

    goto :goto_1

    :cond_1
    const-string v0, "303"

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu$7;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "3593"

    goto :goto_2

    :cond_2
    const-string v2, "3312"

    :goto_2
    if-eqz p1, :cond_3

    const-string p1, "a"

    goto :goto_3

    :cond_3
    const-string p1, "b"

    :goto_3
    invoke-static {v0, v2, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
