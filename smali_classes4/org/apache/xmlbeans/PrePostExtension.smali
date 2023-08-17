.class public interface abstract Lorg/apache/xmlbeans/PrePostExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final OPERATION_INSERT:I = 0x2

.field public static final OPERATION_REMOVE:I = 0x3

.field public static final OPERATION_SET:I = 0x1


# virtual methods
.method public abstract getStaticHandler()Ljava/lang/String;
.end method

.method public abstract hasPostCall()Z
.end method

.method public abstract hasPreCall()Z
.end method
