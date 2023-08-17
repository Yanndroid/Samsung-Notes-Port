.class public interface abstract Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ConvertSubTaskParams;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;,
        Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$ISubTaskCallback;
    }
.end annotation


# virtual methods
.method public abstract setParams(Lcom/samsung/android/support/senl/nt/app/converter/task/sub/IConvertSubTask$IConvertParams;)V
.end method

.method public abstract toString()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
