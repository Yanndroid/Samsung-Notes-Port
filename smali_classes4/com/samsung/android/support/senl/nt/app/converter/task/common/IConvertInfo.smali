.class public interface abstract Lcom/samsung/android/support/senl/nt/app/converter/task/common/IConvertInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;


# static fields
.field public static final GROUP_ID_NONE:I = -0x1


# virtual methods
.method public abstract enableIndividualPage(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract getCallerId()I
.end method

.method public abstract getConverter()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDstFilePrefix()Ljava/lang/String;
.end method

.method public abstract getDstType()I
.end method

.method public abstract getDstUuid()Ljava/lang/String;
.end method

.method public abstract getFolderName()Ljava/lang/String;
.end method

.method public abstract getGroupId()I
.end method

.method public abstract getIsAuthenticated()Z
.end method

.method public abstract getIsWidgetMemo()Z
.end method

.method public abstract getLockType()I
.end method

.method public abstract getReqFileSize()J
.end method

.method public abstract getSrcPath()Ljava/lang/String;
.end method

.method public abstract getSrcType()I
.end method

.method public abstract getUuid()Ljava/lang/String;
.end method

.method public abstract isImported()Z
.end method

.method public abstract isIndividualPage()Z
.end method

.method public abstract setConverter(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
    .param p1    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/ISDocXConverter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setDstFilePrefix(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setDstType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setDstUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setFolderName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setIsAuthenticated(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setIsWidgetMemo(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setIsWrappingWhenLocked(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setLockType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setReqFileSize(J)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setSrcType(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method

.method public abstract setWriteMode(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;
.end method
