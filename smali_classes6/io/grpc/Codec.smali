.class public interface abstract Lio/grpc/Codec;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/grpc/Compressor;
.implements Lio/grpc/Decompressor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Codec$Identity;,
        Lio/grpc/Codec$Gzip;
    }
.end annotation

.annotation build Lio/grpc/ExperimentalApi;
    value = "https://github.com/grpc/grpc-java/issues/1704"
.end annotation
