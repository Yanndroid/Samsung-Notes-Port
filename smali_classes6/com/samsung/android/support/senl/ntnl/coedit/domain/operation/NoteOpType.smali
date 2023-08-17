.class public interface abstract annotation Lcom/samsung/android/support/senl/ntnl/coedit/domain/operation/NoteOpType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final DELETE_CHARACTERS:I = 0x1

.field public static final DELETE_ELEMENTS:I = 0x3

.field public static final DELETE_OBJECT_SPAN:I = 0x8

.field public static final INSERT_CHARACTERS:I = 0x0

.field public static final INSERT_ELEMENTS:I = 0x2

.field public static final INSERT_OBJECT_SPAN:I = 0x7

.field public static final REPLACE_ATTRIBUTES:I = 0x5

.field public static final RETAIN:I = 0x9

.field public static final SET_ANNOTATIONS:I = 0x6

.field public static final UNDEFINED:I = -0x1

.field public static final UPDATE_ATTRIBUTES:I = 0x4
