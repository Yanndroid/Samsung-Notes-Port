.class public interface abstract Lorg/apache/xmlbeans/impl/common/ValidatorListener$Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/common/PrefixResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/common/ValidatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Event"
.end annotation


# static fields
.field public static final COLLAPSE:I = 0x3

.field public static final PRESERVE:I = 0x1

.field public static final REPLACE:I = 0x2


# virtual methods
.method public abstract getLocation()Lorg/apache/poi/javax/xml/stream/Location;
.end method

.method public abstract getLocationAsCursor()Lorg/apache/xmlbeans/XmlCursor;
.end method

.method public abstract getName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getText(I)Ljava/lang/String;
.end method

.method public abstract getXsiLoc()Ljava/lang/String;
.end method

.method public abstract getXsiNil()Ljava/lang/String;
.end method

.method public abstract getXsiNoLoc()Ljava/lang/String;
.end method

.method public abstract getXsiType()Ljava/lang/String;
.end method

.method public abstract textIsWhitespace()Z
.end method
