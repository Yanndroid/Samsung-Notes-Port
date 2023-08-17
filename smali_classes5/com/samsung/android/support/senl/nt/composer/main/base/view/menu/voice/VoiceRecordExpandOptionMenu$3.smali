.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;->initClickListener()V
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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/voice/VoiceRecordMenuPresenter;->isDeleted()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu$3;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordExpandOptionMenu;)V

    :cond_0
    return-void
.end method
