.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;->moveForward()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu$13;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu$13;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;

    iget-object v0, v0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordControlMenu;->mPresenter:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->seekTo(I)V

    return-void
.end method
