.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->parseTextBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finish(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->stop()V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parseTextBox# start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->j()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseTextBox# "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->finish(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->finish(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    const-string v3, "\\r|\\n"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->finish(Z)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v3, v4, v2

    const/4 v3, 0x0

    aput v1, v4, v3

    const-class v1, I

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;[[I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[[I

    move-result-object v0

    aget-object v0, v0, v3

    aput v3, v0, v3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[[I

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    aput v1, v0, v2

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[[I

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[[I

    move-result-object v4

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aget v4, v4, v2

    add-int/2addr v4, v2

    aput v4, v1, v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[[I

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[[I

    move-result-object v4

    aget-object v4, v4, v0

    aget v4, v4, v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, v3}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler$2;->finish(Z)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/controller/HyperTextUpdateHandler;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "parseTextBox# end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
