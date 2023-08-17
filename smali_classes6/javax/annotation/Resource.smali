.class public interface abstract annotation Ljavax/annotation/Resource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Ljavax/annotation/Resource;
        authenticationType = .enum Ljavax/annotation/Resource$AuthenticationType;->CONTAINER:Ljavax/annotation/Resource$AuthenticationType;
        description = ""
        lookup = ""
        mappedName = ""
        name = ""
        shareable = true
        type = Ljava/lang/Object;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/annotation/Resource$AuthenticationType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Ljavax/annotation/Resources;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract authenticationType()Ljavax/annotation/Resource$AuthenticationType;
.end method

.method public abstract description()Ljava/lang/String;
.end method

.method public abstract lookup()Ljava/lang/String;
.end method

.method public abstract mappedName()Ljava/lang/String;
.end method

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract shareable()Z
.end method

.method public abstract type()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
