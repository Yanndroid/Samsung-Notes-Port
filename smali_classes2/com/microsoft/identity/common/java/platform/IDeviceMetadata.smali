.class public interface abstract Lcom/microsoft/identity/common/java/platform/IDeviceMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAllMetadata()Ljava/lang/String;
.end method

.method public abstract getCpu()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getDeviceModel()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getDeviceType()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getManufacturer()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getOsForDrs()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getOsForEsts()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method

.method public abstract getOsForMats()Ljava/lang/String;
    .annotation build Llombok/NonNull;
    .end annotation
.end method
