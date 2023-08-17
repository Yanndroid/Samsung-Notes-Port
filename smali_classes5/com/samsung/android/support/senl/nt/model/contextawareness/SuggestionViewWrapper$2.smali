.class Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/sdk/deepsky/suggestion/view/SuggestionView$OnExpiredListener;


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

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$2;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpired(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExpired# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$2;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->b(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$2;->this$0:Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;->b(Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper;)Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/nt/model/contextawareness/SuggestionViewWrapper$OnExpiredListener;->onExpired(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
