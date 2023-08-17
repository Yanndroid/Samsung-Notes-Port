.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->showMeridianTipcardAfterMeridianDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Z)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;->a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/MicrosoftHelper$IPresenter;->addMicrosoftAccountLoginTipCard()V

    return-void
.end method
