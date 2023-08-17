.class public interface abstract Lorg/apache/xmlbeans/impl/common/ValidatorListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;
    }
.end annotation


# static fields
.field public static final ATTR:I = 0x4

.field public static final BEGIN:I = 0x1

.field public static final END:I = 0x2

.field public static final ENDATTRS:I = 0x5

.field public static final TEXT:I = 0x3


# virtual methods
.method public abstract nextEvent(ILorg/apache/xmlbeans/impl/common/ValidatorListener$Event;)V
.end method
