.class public Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;
.super Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/SchemaLocalElement;
.implements Lorg/apache/xmlbeans/soap/SchemaWSDLArrayType;


# instance fields
.field public _abs:Z

.field private _annotation:Lorg/apache/xmlbeans/SchemaAnnotation;

.field private _blockExt:Z

.field private _blockRest:Z

.field private _blockSubst:Z

.field private _constraints:[Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

.field private _wsdlArrayType:Lorg/apache/xmlbeans/soap/SOAPArrayType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_constraints:[Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->setParticleType(I)V

    return-void
.end method


# virtual methods
.method public blockExtension()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_blockExt:Z

    return v0
.end method

.method public blockRestriction()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_blockRest:Z

    return v0
.end method

.method public blockSubstitution()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_blockSubst:Z

    return v0
.end method

.method public getAnnotation()Lorg/apache/xmlbeans/SchemaAnnotation;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_annotation:Lorg/apache/xmlbeans/SchemaAnnotation;

    return-object v0
.end method

.method public getIdentityConstraintRefs()[Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_constraints:[Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    array-length v1, v0

    new-array v2, v1, [Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getIdentityConstraints()[Lorg/apache/xmlbeans/SchemaIdentityConstraint;
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_constraints:[Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    array-length v0, v0

    new-array v1, v0, [Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_constraints:[Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;->get()Lorg/apache/xmlbeans/SchemaIdentityConstraint;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getWSDLArrayType()Lorg/apache/xmlbeans/soap/SOAPArrayType;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_wsdlArrayType:Lorg/apache/xmlbeans/soap/SOAPArrayType;

    return-object v0
.end method

.method public isAbstract()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_abs:Z

    return v0
.end method

.method public setAbstract(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_abs:Z

    return-void
.end method

.method public setAnnotation(Lorg/apache/xmlbeans/SchemaAnnotation;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_annotation:Lorg/apache/xmlbeans/SchemaAnnotation;

    return-void
.end method

.method public setBlock(ZZZ)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_blockExt:Z

    iput-boolean p2, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_blockRest:Z

    iput-boolean p3, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_blockSubst:Z

    return-void
.end method

.method public setIdentityConstraints([Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;)V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/SchemaParticleImpl;->mutate()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_constraints:[Lorg/apache/xmlbeans/SchemaIdentityConstraint$Ref;

    return-void
.end method

.method public setWsdlArrayType(Lorg/apache/xmlbeans/soap/SOAPArrayType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/SchemaLocalElementImpl;->_wsdlArrayType:Lorg/apache/xmlbeans/soap/SOAPArrayType;

    return-void
.end method
