.class public interface abstract Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;
    }
.end annotation


# static fields
.field public static final SDOCX_CANCEL:I = 0x3

.field public static final SDOCX_CLOSE:I = 0x4

.field public static final SDOCX_CONVERT:I = 0x1

.field public static final SDOCX_OPEN:I = 0x0

.field public static final SDOCX_SAVE:I = 0x2


# virtual methods
.method public abstract convertDocument(Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;Ljava/util/List;Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;)V
    .param p1    # Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/senl/nt/app/converter/task/service/IServiceRequestor$IServiceListener;",
            ")V"
        }
    .end annotation
.end method
