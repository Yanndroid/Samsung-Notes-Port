.class public interface abstract LcoeditOperation/CoeditOperation$ElementOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LcoeditOperation/CoeditOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ElementOrBuilder"
.end annotation


# virtual methods
.method public abstract getAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;
.end method

.method public abstract getAttributeCount()I
.end method

.method public abstract getAttributeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getElementEnd()Z
.end method

.method public abstract getTagName()Ljava/lang/String;
.end method

.method public abstract getTagNameBytes()Lcom/google/protobuf/ByteString;
.end method
