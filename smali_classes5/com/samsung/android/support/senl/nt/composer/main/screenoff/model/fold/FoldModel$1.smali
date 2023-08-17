.class Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel$1;
.super Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFoldStateChanged# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;->a(Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/FoldModel;)Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/model/fold/IFoldModel;->onFolded()V

    :cond_0
    return-void
.end method
