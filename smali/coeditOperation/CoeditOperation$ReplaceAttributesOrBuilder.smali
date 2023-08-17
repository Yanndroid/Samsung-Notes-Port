.class public interface abstract LcoeditOperation/CoeditOperation$ReplaceAttributesOrBuilder;
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
    name = "ReplaceAttributesOrBuilder"
.end annotation


# virtual methods
.method public abstract getNewAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;
.end method

.method public abstract getNewAttributeCount()I
.end method

.method public abstract getNewAttributeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOldAttribute(I)LcoeditOperation/CoeditOperation$KeyValuePair;
.end method

.method public abstract getOldAttributeCount()I
.end method

.method public abstract getOldAttributeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LcoeditOperation/CoeditOperation$KeyValuePair;",
            ">;"
        }
    .end annotation
.end method
