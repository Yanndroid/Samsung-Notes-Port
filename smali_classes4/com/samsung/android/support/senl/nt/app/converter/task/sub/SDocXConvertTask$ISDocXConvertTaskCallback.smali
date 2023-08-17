.class public interface abstract Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask$ISDocXConvertTaskCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/sub/SDocXConvertTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ISDocXConvertTaskCallback"
.end annotation


# virtual methods
.method public abstract convertDocument(Ljava/util/List;JLcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;",
            ")V"
        }
    .end annotation
.end method
