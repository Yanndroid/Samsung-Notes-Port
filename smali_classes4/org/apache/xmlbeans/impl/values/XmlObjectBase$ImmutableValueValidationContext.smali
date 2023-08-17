.class final Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/common/ValidationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/values/XmlObjectBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImmutableValueValidationContext"
.end annotation


# instance fields
.field private _coll:Ljava/util/Collection;

.field private _loc:Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;->_coll:Ljava/util/Collection;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;->_loc:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method


# virtual methods
.method public invalid(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;->_coll:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;->_loc:Lorg/apache/xmlbeans/XmlObject;

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public invalid(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;->_coll:Ljava/util/Collection;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/values/XmlObjectBase$ImmutableValueValidationContext;->_loc:Lorg/apache/xmlbeans/XmlObject;

    invoke-static {p1, p2, v1}, Lorg/apache/xmlbeans/XmlError;->forObject(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlError;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
