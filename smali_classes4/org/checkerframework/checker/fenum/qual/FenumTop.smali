.class public interface abstract annotation Lorg/checkerframework/checker/fenum/qual/FenumTop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lorg/checkerframework/framework/qual/TypeUseLocation;->LOCAL_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;,
        .enum Lorg/checkerframework/framework/qual/TypeUseLocation;->RESOURCE_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/SubtypeOf;
    value = {}
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/TargetLocations;
    value = {
        .enum Lorg/checkerframework/framework/qual/TypeUseLocation;->EXPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;,
        .enum Lorg/checkerframework/framework/qual/TypeUseLocation;->EXPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;
    }
.end annotation
