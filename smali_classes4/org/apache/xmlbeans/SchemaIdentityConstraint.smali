.class public interface abstract Lorg/apache/xmlbeans/SchemaIdentityConstraint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaComponent;
.implements Lorg/apache/xmlbeans/SchemaAnnotated;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    }
.end annotation


# static fields
.field public static final CC_KEY:I = 0x1

.field public static final CC_KEYREF:I = 0x2

.field public static final CC_UNIQUE:I = 0x3


# virtual methods
.method public abstract getConstraintCategory()I
.end method

.method public abstract getFieldPath(I)Ljava/lang/Object;
.end method

.method public abstract getFields()[Ljava/lang/String;
.end method

.method public abstract getNSMap()Ljava/util/Map;
.end method

.method public abstract getReferencedKey()Lorg/apache/xmlbeans/SchemaIdentityConstraint;
.end method

.method public abstract getSelector()Ljava/lang/String;
.end method

.method public abstract getSelectorPath()Ljava/lang/Object;
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method
