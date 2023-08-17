.class interface abstract Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Reader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException;
    }
.end annotation


# virtual methods
.method public abstract getUInt16()I
.end method

.method public abstract getUInt8()S
.end method

.method public abstract read([BI)I
.end method

.method public abstract skip(J)J
.end method
