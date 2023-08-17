.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;->updateMinimizeMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$15;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$15;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$15;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu$15;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;->l(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/voice/VoiceRecordMenu;)V

    return-void
.end method
