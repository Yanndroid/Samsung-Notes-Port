.class Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$3;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDismissed# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$3;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->c(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$3;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->c(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnSwipeDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
