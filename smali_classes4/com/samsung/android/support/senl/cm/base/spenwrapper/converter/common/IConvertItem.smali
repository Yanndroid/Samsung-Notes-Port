.class public interface abstract Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WRITE_MODE_NORMAL:I = 0x0

.field public static final WRITE_MODE_RENAME:I = 0x2

.field public static final WRITE_MODE_REPLACE:I = 0x1


# virtual methods
.method public abstract getSrcPath()Ljava/lang/String;
.end method

.method public abstract getWritingMode()I
.end method

.method public abstract isWrappingWhenLocked()Z
.end method
